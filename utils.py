def get_department_stats(faculty_data):
    """Calculate department statistics"""
    department_count = {}
    for faculty in faculty_data:
        dept = faculty['department']
        department_count[dept] = department_count.get(dept, 0) + 1
    
    # Convert to list of dictionaries for chart.js
    stats = [{'department': dept, 'count': count} 
             for dept, count in department_count.items()]
    return stats

def get_gender_stats(faculty_data):
    """Calculate gender statistics"""
    gender_count = {'M': 0, 'F': 0, 'Other': 0}
    for faculty in faculty_data:
        gender = faculty['gender']
        gender_count[gender] = gender_count.get(gender, 0) + 1
    
    stats = [{'gender': gender, 'count': count} 
             for gender, count in gender_count.items() if count > 0]
    return stats

def get_appointment_stats(faculty_data):
    """Calculate appointment type statistics"""
    appointment_count = {}
    for faculty in faculty_data:
        appointment = faculty['appointment_type']
        appointment_count[appointment] = appointment_count.get(appointment, 0) + 1
    
    stats = [{'appointment_type': apt, 'count': count} 
             for apt, count in appointment_count.items()]
    return stats

def get_experience_stats(faculty_data):
    """Calculate experience statistics with consistent logic"""
    if not faculty_data:
        return []
    
    # FIXED: Use the same logic as add_faculty route
    count_0_5 = sum(1 for faculty in faculty_data if faculty.get('overall_exp', 0) <= 5.9)
    count_6_10 = sum(1 for faculty in faculty_data if faculty.get('overall_exp', 0) <= 10.9 and faculty.get('overall_exp', 0) > 5.9)
    count_10_plus = sum(1 for faculty in faculty_data if faculty.get('overall_exp', 0) > 10.9)
    
    return [
        {'experience_category': '0-5', 'count': count_0_5},
        {'experience_category': '6-10', 'count': count_6_10},
        {'experience_category': '10+', 'count': count_10_plus}
    ]
def get_designation_stats(faculty_data):
    """Calculate designation statistics with specific ordering"""
    designation_count = {}
    for faculty in faculty_data:
        # Safely get designation with default value
        designation = faculty.get('designation', 'Not Specified')
        designation_count[designation] = designation_count.get(designation, 0) + 1
    
    # Define the desired order: Professor → Associate Professor → Assistant Professor
    order_preference = {
        'Professor': 1,
        'Associate Professor': 2, 
        'Assistant Professor': 3
    }
    
    # Convert to list of dictionaries and sort by preference
    stats = [{'designation': desig, 'count': count} 
             for desig, count in designation_count.items()]
    
    # Sort by predefined order
    stats.sort(key=lambda x: order_preference.get(x['designation'], 99))
    
    return stats

def get_qualification_stats(faculty_data):
    """Calculate qualification statistics (Ph.D, PG, etc.)"""
    # We'll need to query the database for detailed qualification data
    # For now, return placeholder stats that we'll update later
    return {
        'phd_count': 0,  # Will be calculated from database
        'pg_count': 0,   # Will be calculated from database
        'other_qualifications': 0
    }

def get_detailed_designation_stats(faculty_data):
    """Calculate detailed designation statistics"""
    designation_count = {
        'Professor': 0,
        'Associate Professor': 0,
        'Assistant Professor': 0,
        'Other': 0
    }
    
    for faculty in faculty_data:
        designation = faculty.get('designation', 'Other')
        if designation in designation_count:
            designation_count[designation] += 1
        else:
            designation_count['Other'] += 1
    
    return designation_count